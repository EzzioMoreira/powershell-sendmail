#=========================send e-mail==============================#
$SMTPServer = "mail.domain.com"
$SMTPPort = "587"
$Username = "email@domain.com" 
$Password = "password"
#==================================================================#

#=======================destination================================#
$to = "email@domain.com" 
$attachment = "dir\arq.txt"
$subject = "Test email" 
$body = @"
<p>Here is a message by <strong>HTML formatted</strong>.</p>
<p>From your friendly neighborhood IT guy</p>
"@

#=================================================================#
#$attachment = "D:\destino\log\domingo14072019.txt"
$message = New-Object System.Net.Mail.MailMessage 
$message.subject = $subject 
$message.from = $username 
$message.to.add($to)
$message.IsBodyHtml = $true
$message.body = $body
$smtp = New-Object System.Net.Mail.SmtpClient($SMTPServer, $SMTPPort);
#$smtp.EnableSSL = $true
$smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
$smtp.send($message)
 
 
