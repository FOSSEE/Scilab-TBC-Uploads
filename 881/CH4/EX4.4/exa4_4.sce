clc;
//Example 4.4
//Page no 128

Vc=10; //Vp
m=1;
Rl=10;
m1=0.5;

//(a)

disp("(a)The carrier power is found by substituting into equation 4-18 (pgno 126): ");

Pc=((Rl^2)/(2*Rl));

disp('W',Pc,"Pc = ");

disp("The upper and lower sideband power is found by substituting into equation 4-21 (pgno 127):");

P=(((m^2)*Pc)/4);

disp('W',P,"Pusb = Plsb = ");

//(b)

disp("(b)The total sideband power is ");

Ps=(((m^2)*Pc)/2);

disp('W',Ps,"Psbt = ");

//(c)

disp("(c)The total power in the modulated is found by substituting into equation 4-25 (pgno 127)");

Pt=(5*[1+(m^2)/2]);

disp('W',Pt,"Pt = ");

//(d)

disp("(d)The carrier power is found by substituting into equation 4-18 ");

Pc1=Pc;

disp('W',Pc1,"Pc ");

disp("The upper and lower sideband power is found by substituting into equation 4-21 (pgno 127):");

P1=(((m1^2)*Pc)/4);

disp('W',P1,"Pusb = Plsb = ");

disp("The total sideband power is ");

Ps1=(((m1^2)*Pc)/2);

disp('W',Ps1,"Psbt = ");

disp("The total power in the modulated is found by substituting into equation 4-25 (pgno 127)");

Pt1=(5*[1+(m1^2)/2]);

disp('W',Pt1,"Pt = ");
