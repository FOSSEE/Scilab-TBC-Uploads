//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 32 // read it as example 31 in the book on page 2.85

disp("CHAPTER 2");
disp("EXAMPLE 32");

//VARIABLE INITIALIZATION 
//function of the waveform is deduced to be i=Im.sinΘ
//SOLUTION
//Average value of current is Iav=area of rectified wave/interval
//Can be achieved by integration
//Iav=(1/2.π).Integral(ydΘ) from 0 to π, and π to 2.π is zero, interval is 2.π
//need to assume values, let Im=1
//say
Im=1;                                // in Amp
Iav=(1/(2*%pi))*integrate('(Im*sin(th))', 'th', 0, %pi);
//disp(sprintf("The average value of waveform is %f",  Iav));
//RMS  mean square value (1/π).Integral(y^2.dΘ) from 0 to π
Ims=(1/(2*%pi))*integrate('(Im*sin(th))^2', 'th', 0, %pi);
//disp(sprintf("The RMS value of waveform is %f",  sqrt(Ims)));
ff=sqrt(Ims)/Iav;
disp(sprintf("The form factor of waveform is %.2f",ff));
disp(" "); 
// 
//END
