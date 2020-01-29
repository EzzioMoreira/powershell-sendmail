$emailSmtpServer = "mail.server.com"
$emailSmtpServerPort = "587"
$emailSmtpUser = "email@domain.com"
$emailSmtpPass = "password"
$attachment = "dirsouce\arq.txt"
 
$emailMessage = New-Object System.Net.Mail.MailMessage
$emailMessage.From = "email@domain.com"
$emailMessage.To.Add( "email2@domain.com" )
$emailMessage.Subject = "Testing e-mail powershell"
$emailMessage.Attachments.Add( $attachment )
$emailMessage.IsBodyHtml = $true
$emailMessage.Body = @"
<p>Here is a message <strong>HTML formatted</strong>.</p>
<p>From your friendly neighborhood IT guy</p>
"@
 
$SMTPClient = New-Object System.Net.Mail.SmtpClient( $emailSmtpServer , $emailSmtpServerPort )
#$SMTPClient.EnableSsl = $true
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential( $emailSmtpUser , $emailSmtpPass );
$SMTPClient.Send( $emailMessage ) 
