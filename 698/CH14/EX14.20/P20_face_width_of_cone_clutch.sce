clc
//Example 14.20
//Face width of cone clutch

//------------------------------------------------------------------------------
//Given Data:
//Torque to be transmitted
T=100//Nm
//Available axial force
Fe=850//N
//Total included cone angle
A=24//degrees
//Pitch angle
alpha=A/2
//converting alpha in degrees to radians
alpha=(alpha*%pi)/180
//maximum pressure
p=100*(10^3)//N/m^2
//coefficient of friction
f=0.20

//------------------------------------------------------------------------------
//Function to standardize the dimensions
std=[1 2 3 4 5 6 8 10 12 14 15 16 18 20 24 26 30:5:300]
n=length(std)

funcprot(0)
function y=stddim(x)
    x=x*(10^3)
    for i=1:n
        if (x<std(i)) then
            y=std(i)
            break
            
        else
            continue
        end
    end 
    y=y*(10^-3)
endfunction
//------------------------------------------------------------------------------
//Assuming uniform wear
//To find required face width 'b'

//Force required to engage the clutch
//Fe=Fn*((sin (alpha))+(f*cos (alpha)))
Fn=Fe/((sin (alpha))+(f*cos (alpha)))

//Torque transmitting capacity
//T=Fn*f*Rm
//Mean radius
Rm=T/(Fn*f)
Rm=stddim(Rm)

//Normal force
//Fn=p*2*%pi*Rm*b
//Face width
b=Fn/(p*2*%pi*Rm)
b=stddim(b)

//------------------------------------------------------------------------------
//Printing result file to .txt
res20=mopen(TMPDIR+'20_face_width_of_cone_clutch.txt','wt')
mfprintf(res20,"The required face width is %0.1f mm",b*(10^3))
mclose(res20)
editor(TMPDIR+'20_face_width_of_cone_clutch.txt')
//------------------------------------------------------------------------------
//-------------------------------End of program------------------------------