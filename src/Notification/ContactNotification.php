<?php
namespace App\Notification;

use App\Entity\Contact;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Email;
use Twig\Environment;

class ContactNotification {

    /**
     * @var MailerInterface
     */
    private $mailer;

    /**
     * @var Environment
     */
    private $renderer;

    public function __construct(MailerInterface $mailer, Environment $renderer)
    {
        $this->mailer = $mailer;
        $this->renderer = $renderer;
    }

    /**
     * @throws \Twig\Error\SyntaxError
     * @throws \Symfony\Component\Mailer\Exception\TransportExceptionInterface
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\LoaderError
     */
    public function notify(Contact $contact) {
        $email = (new Email())
            ->from('noreply@agence.fr')
            ->to('contact@agence.fr')
            ->replyTo($contact->getEmail())
            ->subject('Agence Symfony : '.$contact->getProperty()->getTitle())
            ->text('Vous avez reçu une nouvelle demande :')
            ->html($this->renderer->render('emails/contact.html.twig', [
                'contact' => $contact
            ]), 'text/html');
        $this->mailer->send($email);
    }

}
