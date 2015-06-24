clear;
clc;
disp("--------------Example 26.1---------------")
// client request :- Do enable the echo option
r_character1="IAC";
r_character2="DO";
r_character3="ECHO";
//server approval :- I will enable the echo option
a_character1="IAC";
a_character2="WILL";
a_character3="ECHO";
printf("In this example, the client wants the server to echo each character sent to the server. In other words,\nwhen a character is typed at the user keyboard terminal, it goes to the server and is sent back to the screen of the user before being processed.\nThe echo option is enabled by the server because it is the server that sends the characters back to the user terminal.\nTherefore, the client should request from the server the enabling of the option using DO.\nThe request consists of three characters: %s, %s and %s.\nThe server accepts the request and enables the option WILL.\nIt informs the client by sending the three-character approval: %s, %s and %s.",r_character1,r_character2,r_character3,a_character1,a_character2,a_character3); // display result
