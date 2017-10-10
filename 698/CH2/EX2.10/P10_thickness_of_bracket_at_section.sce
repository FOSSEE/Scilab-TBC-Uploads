clc
//Example 2.10
//Thickness of bracket at section
//------------------------------------------------------------------------------

//Given Data:
//Loads
P=4500 // N

//Distance of line of action from horizontal axis of bracket
c=0.025 // m

//Distance of vertical axis of bracket from bottom

//Height of section
h=0.05 // m

//Permissible tensile stress
S_perm=70*(10^6)

//------------------------------------------------------------------------------
//Printing result file to .txt
//Moment of force about vertical axis
M=P*h

res10=mopen(TMPDIR+'10_thickness_of_bracket_at_section.txt','wt')
//Assuming the thickness of the bracket is b
mfprintf(res10,"Assuming the thickness of the bracket as b,\n")
mfprintf(res10,"The area of cross section will be A=0.05*b\n")
mfprintf(res10,"Moment of inertia will be I=b*(0.05)^3/12\n")

mfprintf(res10,"The tensile stress is given by equation:\n\tSn_max=(P/A)+((M*c)/I)\n\n")
b=(1/S_perm)*((P/h)+((M*c*12)/(h^3)))

mfprintf(res10,"b=%0.5f m",b)
mfprintf(res10,"\n\n%d mm is required to limit the stress at %d MN/m^2",(b*1000),(S_perm*(10^-6)))
mclose(res10)
editor(TMPDIR+'10_thickness_of_bracket_at_section.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------