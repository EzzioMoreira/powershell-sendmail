#=========================source=================================#
$SMTPServer = "smtp.domain.com"
$SMTPPort = "587"
$Username = "mail@domain.com" 
$Password = "password"
#================================================================#

#=======================destination==============================#
$to = "destination@domain.com" 
$subject = "Mensseger test powershell" 
$body = "this email sent by powershell.exe.
Signature,
Beltrano Moreira"
#=================================================================#

$message = New-Object System.Net.Mail.MailMessage 
$message.subject = $subject 
$message.from = $username 
$message.to.add($to)
$message.body = $body
$smtp = New-Object System.Net.Mail.SmtpClient($SMTPServer, $SMTPPort);
$smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
$smtp.send($message)
