#=========================send e-mail==============================#
$SMTPServer = "mail.locfama.com.br"
$SMTPPort = "587"
$Username = "ti@locfama.com.br" 
$Password = "Locf@m@2022"
#==================================================================#

#=======================destination================================#
$to = "enzziom@gmail.com" 
$attachment = "D:\destino\log\$data.txt"
$subject = "Bakcup Cbirdex" 
$body = @"
<p>Here is a message by Ezzio Moreira <strong>HTML formatted</strong>.</p>
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
 
 
