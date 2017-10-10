//chapter 10 Ex 32

clc;
clear;
close;
hinFail=35; engFail=45; bothFail=20;
hinengbothFail=hinFail+engFail-bothFail;
passboth=100-hinengbothFail;
mprintf("The percentage passed in both is %d percent",passboth);
