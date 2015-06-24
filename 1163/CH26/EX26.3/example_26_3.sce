clear;
clc;
disp("--------------Example 26.3---------------")
// display the example
printf("We use TELNET to log into port 25 (the wellknown port for SMTP). We then use the commands directly to send an e-mail.\nIn this example,forouzanb@adelphia.net is sending an e-mail to himself. The first few lines show TELNET trying to connect to the Adelphia mail server.\nAfter connection, we can type the SMTP commands and then receive the responses, as shown below.\nComment lines are designated by the = signs. These lines are not part of the e-mail procedure.");
// display the SMTP commands and responses
printf("\n\n$ telnet mail.adelphia.net25\nTrying 68.168.78.100...\nConnected to mail.adelphia.net(68.168.78.100).");
printf("\n\n================= Connection Establishment====================\n 220 mta13.adelphia.net SMTP server ready Fri, 6 Aug 2004 ...\nHELO mail.adelphia.net\n 250 mtal3.adelphia.net");
printf("\n\n============= Mail Transfer=================\nMAIL FROM: forouzanb@adelphia.net\n 250 Sender:<forouzanb@adelphia.net>:Ok\nRCPT TO:forounzanb.@adelphia.net\n 250 Recipient:<forouzanb@adelphia.net>Ok\nDATA\n 354 Ok Send data ending with <CRLF>.<CRLF>\nFrom:Forouzan\nTO:Forouzan");
printf("\n\nThis is a test message\nto show SMTP in action...");
printf("\n\n==============Connection Termination =================\n 250 Message received:adelphia.net@mail.adelphia.net\nQUIT\n 221 mta13.adelphia.net SMTP server closing connection\nConnection closed by foreign host.");
