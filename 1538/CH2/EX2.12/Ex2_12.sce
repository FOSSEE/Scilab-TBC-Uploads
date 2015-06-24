//example-2.12
//page no-60
//given
//elctronegativity of In
EnIn=1.5
//elctronegativity of As
EnAs=2.2
//elctronegativity of Ga
EnGa=1.8
//for InAs
%ionic_charater1=[1-(%e)^((-0.25)*(EnAs-EnIn)^2)]*100
//for GaAs
%ionic_charater2=[1-(%e)^((-0.25)*(EnAs-EnGa)^2)]*100
printf ("percent ionic character in InAs and GaAs are %f and %f",%ionic_charater1,%ionic_charater2)
