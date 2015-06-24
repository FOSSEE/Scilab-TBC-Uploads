//Variable declaration
Rb1=36                   //base resistance 1(kohms)
Rb2=12                   //base resistance 2(kohms)
Rc=4                     //emitter resistancce(kohms) 
Re=1.8                   //emitter resistance(kohms)    
Vcc=12                   //supply voltage(V)
Vbe=0.7                  //base to emitter voltage(V)

//Calculations
Rb=(Rb1*Rb2)/(Rb1+Rb2)   //base resistance(ohms)
Vbb=Vcc*(Rb2/(Rb1+Rb2))  //voltage supply to base(V)
                         //(10.8*Ib)+(1.8*Ic)=2.3    equation 1...solving -Vbb+RbIb+Vbe+(Ib+IC)Re
                          //(1.8*Ib)+(5.8*Ic)+Vce=12  equation 2  solving -Vcc+RcIc+Vce+(Ob+Ic)Re
//Part a
beeta=50              //current gain  
Ib=2.3/100.8          //(10.8*Ib)+(90*Ib)=2.3 ,using -Vbb+Rb*Ib+Vbe+(Ib+Ic)*Re  
                      //as Ic=50Ib and putting this in equation 1      
Icq=Ib*beeta
Vceq=Vcc-(1.8*Ib)-(5.8*Icq) //from equation 2

//Part b
beeta=150           //current gain  
Ib=2.3/280.8        // (10.8*Ib)+(270*Ib)=2.3,using -Vcc+Rc*Ic+Vce+(Ib+Ic)*Re   
                    //as Ic=150Ib and putting this in equation 1      
Icq1=Ib*beeta                           
Vceq1=Vcc-(1.8*Ib)-(5.8*Icq1)         //from equation 2

//Results
printf ("when beeta increases by 300%%,Icq increases by %.1f %%",(Icq1-Icq)/Icq1*100)
printf ("when beeta increases by 300%%, Vceq increases by %.f %%",(Vceq-Vceq1)/Vceq*100)
