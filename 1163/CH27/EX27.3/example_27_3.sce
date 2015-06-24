clear;
clc;
disp("--------------Example 27.3---------------")
// display the example
printf("HTTP uses ASCII characters. A client can directly connect to a server using TELNET, which logs into port 80.\nThe next three lines show that the connection is successful.\nThe first shows the request line (GET method), the second is the header (defining the host), the third is a blank, terminating the request.\nThe server response is seven lines starting with the status line.\nThe blank line at the end terminates the server response. The file of 14,230 lines is received after the blank line.\nThe last line is the output by the client.\n\n");
printf("$ telnet www.mhhe.com 80\nTrying 198.45.24.104...\nConnected to www.mhhe.com (198.45.24.104).\nEscape character is ^]\nGET /engcs/compsci/forouzan HTTP/1.1\nFrom: forouzanbehrouz@fbda.edu\n\n");
printf("HTTP/1.1 200 OK\nDate: Thu, 28 Oct 2004 16:27:46 GMT\nServer: Apache/l.3.9 (Unix) ApacheJServ/1.1.2 PHP/4.1.2 PHP/3.0.18\nMIME-version:1.0\nContent-Type: text/html\nLast-modified: Friday, 15-0ct-04 02:11:31 GMT\nContent-length: 14230\n\nConnection closed by foreign host.");
