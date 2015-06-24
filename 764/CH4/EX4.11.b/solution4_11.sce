
//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0)
        v = v + (5 - rem)
    end
endfunction

function[] = plot_format()
    //Get the handle of current axes
    g = gca()
    //Give labels and set label properties
    g.labels_font_color=5
    g.font_size=3
    g.grid=[1,1]
    g.box="off"
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution4_11.sce')
//Obtain path of data file
datapath = path + filesep() + 'data4_11.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate permissible bending stress sigmab (N/mm2)
sigmab = Sut/fs
//Distance of B l (mm)
l = pdist
//Increment length by 20mm and plot the bending moment variation over cantilever
//Infinite for loop 
for i = 1:1:%inf
    Mb(i) = (P * 1000)*(l)
    len(i) = l
    if(l == dist)
        break
    end
    l = l + 20
end
plot(len,Mb)
plot_format()
title('Variation of bending moment against cantilever length')
xlabel('Cantilever Length(mm)')
ylabel('Bending Moment (Hogging) (N-mm)')
//Calculate maximum bending moment at A Mbmax (N-mm) from the plot
Mbmax = max(Mb)
//Assume the width of the cross-section to be 1mm w
w = 1
//Calculate the value of y (mm)
y = w
//Calculate second moment of area I (mm4)
I = (w * ((ratio * w)^3))/12
//Calculate the width of the cross-section (mm)
w = ((Mbmax * y)/(I * sigmab))^(1/3)
w = round_five(w)
//Calculate the depth of the cross-section d (mm)
d = 2 * w
//Print results
printf('\nWidth of the cross-section(w) = %f mm\n',w)
printf('\nDepth of the cross-section(d) = %f mm\n',d)
