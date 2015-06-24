clear;
clc;
disp("--------------Example 26.2---------------")
// request :- Do enable terminal option
re_character1="IAC";
re_character2="DO";
re_character3="Terminal type";
//approval :- will enable the terminal option
a_character1="IAC";
a_character2="WILL";
a_character3="Terminal type";
//request :- Set the terminal type to "VT"
r_character1="IAC";
r_character2="SB";
r_character3="Terminal type";
r_character4="V";
r_character5="T";
r_character6="IAC";
r_character7="SE";
// display the example
printf("  Client                                                Server\n");
printf("    |             I will enable the terminal option       |\n");
printf("    |------------|%s|-|%s|-|%s|------------>|\n",a_character3,a_character2,a_character1);
printf("    |                                                     |\n");
printf("    |             Do enable terminal option               |\n");
printf("    |<-----------|%s|-|%s|-|%s|---------------|\n",re_character1,re_character2,re_character3);
printf("    |                                                     |\n");
printf("    |            Set the terminal type to VT              |\n");
printf("    |----|%s|-|%s|-|%s|-|%s|-|%s|-|%s|-|%s|--->|\n",r_character7,r_character6,r_character5,r_character4,r_character3,r_character2,r_character1);
