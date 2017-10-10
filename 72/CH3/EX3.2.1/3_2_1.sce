

//chapter_no.-3,  page_no.-89
//Example_no.3-2-1
clc;


//(a)Calculate_the_reflection_coefficient


Zl=70+(%i*50);
Z0=75+(%i*.01);
r=(Zl-Z0)/(Zl+Z0);
x=real(r);
y=imag(r);
o=atand(y,x);
disp(o,'the_phase_of_reflection_coefficient is =');
M=abs(r);//magintue_of_r
disp(M,'the_magnitude_of_reflection_coefficient_is =');
disp(r,'the_reflection_coefficient is =');




//(b)Calculate_the_transmission_coefficient


T=(2*Zl)/(Zl+Z0);
x=real(T);
y=imag(T);
o=atand(y,x);
disp(o,'the_phase_of_transmission_coefficient is =');
M=abs(T);//magintue_of_T
disp(M,'the_magnitude_of_transmission_coefficient_is =');
disp(T,'the_transmission_coefficient is =');



//(c)Verify_the_relationship_shown_in_Eq(3-2-21)


T2=T^2;
x=real(T2);
y=imag(T2);
o=atand(y,x);
disp(o,'the_phase_of_T^2_is =');
M=abs(T2);//magintue_of_T^2
disp(M,'the_magnitude_of_T^2_is =');
disp(T2,'T^2 =');

p=(Zl/Z0)*(1-(r^2));
x=real(p);
y=imag(p);
o=atand(y,x);
disp(o,'the_phase_of_(Zl/Z0)*(1-(r^2)_is =');
M=abs(T2);//magintue_of_(Zl/Z0)*(1-(r^2)
disp(M,'the_magnitude_of_(Zl/Z0)*(1-(r^2)_is =');
disp(p,'(Zl/Z0)*(1-(r^2)) = ');
disp('since T^2=(Zl/Z0)*(1-(r^2)) hence the_relationship_shown_in_Eq(3-2-21) is verified');




//(d)Verify_the_transmission_coefficient_equals_equals_the_algebraic_sum_of_1_plus_the_reflection_coefficient_as_shown_in_Eq(2-3-18)


y=r+1;

disp(T,'T =');
disp(y,'r+1 = ');
disp('since T = r+1 hence the_relationship_shown_in_Eq(2-3-18) is verified');
