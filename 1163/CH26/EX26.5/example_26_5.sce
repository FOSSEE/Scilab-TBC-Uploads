clear;
clc;
disp("--------------Example 26.5---------------")
printf("This an example of anonymous FTP. We assume that some public data are available at internic.net.Lines in the middle show \ncommands sent by the client and the top and bottom lines show data transfer.\n\n");
printf("$ ftp internic.net\nConnected to internic.net\n220 Server ready\nName: anonymous\n331 Guest login OK, send guest as password\nPassword:guest\nftp>pwd\n257 / is current directory\nftp>ls\n200 OK\n150 Opening ASCII mode");
printf("\n\nbin\n...\n...\n...");
printf("\n\nftp>close\n221 Goodbye\nftp>quit");
