//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 5.38\n\n\n");
// Chapter 5 : Properties Of Liquids And Gases
// Problem 5.38  (page no. 222) 
// Solution

//As shown in Fig. 5.21b,the process dscribed in this problem is a vertical line on the Mollier Chart.For 800 psia and 600F,the Mollier chart yeilds h1=1270 Btu/lbm and s1=1.485.Proceeding vertically down the chart at constant s to 200 psia yields a final enthalpy h2=1148 Btu/lbm.The change in enthaly using the process is        1270-1148=122 Btu/lbm.
//We may also solve this problem using the steam tables in Appendix 3.Thus,the enthalpy at 800 psia and 600 F is 1270.4 Btu/lbm,and its entropy is 1.4861 Btu/lbm*R.
//Because the process is isentropic,the final entropy at 200psia must be 1.4861.From the saaturation table,the entropy of saturated steam at 200 psia is 1.5464,which indicates the final steam condition must be wet because the entropy of the final steam is less than the entropy of saturation.Using the wet steam relation yields,
//sx=sf+(x*sfg)
h1=1270.4; sx=1.4861; sf=0.5440; sfg=1.0025 ;hf=355.6; hfg=843.7;
x=(sx-sf)/sfg; //Quality
//Therefore,the final enthalpy is
hx=hf+(x*hfg); //Btu/lbm
printf("The final enthalpy is %f Btu/lbm\n",hx);
printf("The change in enthalpy is %f Btu/lbm\n",h1-hx); //Note the agreement with the Mollier chart solution
//we can also use the computer program to solve this problem.For 600F and 800 psia, h=1270. Btu/lbm and s=1.4857 Btu/lbm*R.Now using p=200 psia and s=1.4857,we obtain
//h=1148.1 Btu/lbm.The change in enthalpy is 1270.0-1148.1=121.9 Btu/lbm.Note the effort saved using either the Mollier chart or the computer program. 

// Saturation Properties
//--------------------------
// T=600.00 degF
// P=1541.7 psia
//       z        z1         zg
// v(ft^3/lbm)   0.02362   0.2675
// h(Btu/lbm)    616.59    1166.2
// s(Btu/lbm*F)  0.8129    1.3316
// u(Btu/lbm)    609.85    1089.9

//Thermo Properties
//------------------------
// T= 600.00 degF
// P= 800.00 psia
// v= 0. ft^3/lbm
// h= 1168.7 Btu/lbm
// s= 1.5384 Btu/lbm*F
// u= 1087.5 Btu/lbm
//Region:Superheated

// Saturation Properties
//--------------------------
// T=381.87 degF
// P=200.00 psia
//       z        z1        zg
// v(ft^3/lbm)   0.01839   2.2883
// h(Btu/lbm)    355.60    1199.0
// s(Btu/lbm*F)  0.5440    1.5462
// u(Btu/lbm)    354.92    1114.3

//Thermo Properties
//------------------------
// T= 381.87 degF
// P= 200.00 psia
// v= 2.1512 ft^3/lbm
// h= 1148.1 Btu/lbm
// s= 1.4857 Btu/lbm*F
// u= 1068.5 Btu/lbm
// x= 0.9396

//Region:Saturated
