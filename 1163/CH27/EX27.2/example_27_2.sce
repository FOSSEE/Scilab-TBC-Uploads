clear;
clc;
disp("--------------Example 27.2---------------")
// display the example
printf("In this example, the client wants to send data to the server. The POST method is used. The request line shows the method (POST),\nURL, and HTTP version (1.1). There are four lines of headers. The request body contains the input information. The response message contains\nthe status line and four lines of headers. The created document, which is a CGI document, is included as the body.");
// figure
printf("\n\n  Client                                           Server\n");
printf("   |            Request (POST method)                  |\n");
printf("   |           ______________________________          |\n");
printf("   |----------|POST /cgi-bin/doc.pl HTTP/1.1 |-------->|\n");
printf("   |          |Accept: */*                   |         |\n");
printf("   |          |Accept: image/gif             |         |\n");
printf("   |          |Accept: image/jpeg            |         |\n");
printf("   |          |Content-length: 50            |         |\n");
printf("   |          |                              |         |\n");
printf("   |          |(Input information)           |         |\n");
printf("   |          |______________________________|         |\n");
printf("   |                                                   |\n");
printf("   |            _____________________________          |\n");
printf("   |          |HTTP/1.1 200 OK               |         |\n");
printf("   |          |Date:Mon,07-Jan-02 13:15:14GMT|         |\n");
printf("   |<---------|Server: Challenger            |---------|\n");
printf("   |          |MIME-version: 1.0             |         |\n");
printf("   |          |Content-length: 2000          |         |\n");
printf("   |          |                              |         |\n");
printf("   |          |(Body of the document)        |         |\n");
printf("   |          |______________________________|         |\n");
printf("   |           Response                                |\n");

