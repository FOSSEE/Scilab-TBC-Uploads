                     //EXAMPLE 3-14   PG NO 182-183
X=[400+%i*0 -6+%i*0,-200-%i*346.410  6-%i*0];
Y=[12+%i*0 -6+%i*0,-6+%i*0 6-%i*8];
I1=52.31-%i*7.120;
I2=37.957-%i*14.23;
Ia=I1;
disp('i) CURRENT  (Ia) is  in rectangular form  =  '+string (Ia) +' A ');
Ib=I2-I1;
disp('i) CURRENT  (Ib) is  in  rectangular form  =  '+string (Ib) +' A ');
IC=-I2;
disp('i) CURRENT  (Ic) is  in rectangular form  =  '+string (IC) +' A ');
Z1=6+%i*0;
Vao=Ia*Z1;
disp('i) VOLTAGE  (Vao) is  in rectangular form  =  '+string (Vao) +' V ');
Vbo=Ib*Z1;
disp('i) VOLTAGE  (Vbo) is  in rectangular form  =  '+string (Vbo) +' V ');
Vco=IC*(-%i*8);
disp('i) VOLTAGE  (Vco) is  in rectangular form  =  '+string (Vco) +' V ');
