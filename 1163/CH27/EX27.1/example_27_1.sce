clear;
clc;
disp("--------------Example 27.1---------------")
// display the example
printf("This example retrieves a document. We use the GET method to retrieve an image with the path /usr/bin/image1.\nThe request line shows the method (GET), the URL, and the HTTP version(1.1).\nThe header has two lines that show that the client can accept images in the GIF or JPEG format.\nThe request does not have a body. The response message contains the status line\nand four lines of header. The header lines define the date, server,\nMIME version, and length of the document. The body of the document follows the header.");
// figure
printf("\n\n  Client                                           Server\n");
printf("   |           Request (GET method)                    |\n");
printf("   |            _____________________________          |\n");
printf("   |-----------|GET /usr/bin/image1 HTTP/1.1 |-------->|\n");
printf("   |           |Accept: image/gif            |         |\n");
printf("   |           |Accept: image/jpeg           |         |\n");
printf("   |           |_____________________________|         |\n");
printf("   |                                                   |\n");
printf("   |            _____________________________          |\n");
printf("   |           |HTTP/l.l 200 OK              |         |\n");
printf("   |           |Date:Mon07-Jan-05 13:15:14GMT|         |\n");
printf("   |<----------|Server: Challenger           |---------|\n");
printf("   |           |MIME-version: 1.0            |         |\n");
printf("   |           |Content-length: 2048         |         |\n");
printf("   |           |                             |         |\n");
printf("   |           |(Body of the document)       |         |\n");
printf("   |           |_____________________________|         |\n");
printf("   |           Response                                |\n");
