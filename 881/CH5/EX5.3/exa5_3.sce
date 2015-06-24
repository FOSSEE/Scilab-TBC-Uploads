clc;
//Example 5.3
//Page no 165



//solution

fio=1355; //kHz
fRF=900; //kHz
fRFu=895; //kHz
fRFl=905; //kHz



fIF=fio-fRF;

disp('kHz',fIF,"fIF = ");

disp("The upper and lower intermediate are");

fIFu=fio-fRFu;

disp('kHz',fIFu,"fIF = ");

fIFl=fio-fRFl;

disp('kHz',fIFl,"fIF = ");

