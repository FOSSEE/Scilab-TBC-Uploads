
//Function for plotting S-N Curve
function[a, b, c, d]= SNplot(Sut,Se)
    //Initialise e
    e = 4
    //Initialise all given values
    a = log10(0.9 * Sut)
    b = log10(Se)
    c = log10(Nmin)
    d = log10(Nmax)
    //Calculate the values of y-coordinate when x = 4 and 5 using linear interpolation
    for i = 1:1:4
        if(i == 1)
            s(i) = c
            l(i) = a
        elseif(i == 4)
            s(i) = d
            l(i) = b
        else
            s(i) = log10(10^e)
            l(i) = b + (((a - b)/(c - d))*(s(i) - d))
            e = e + 1
        end
    end
    //Plot S-N Curve
    y = {l(1), l(2), l(3), l(4)}
    x = {s(1), s(2), s(3), s(4)}
    plot(x,y,'-*')
    plot2d3(x,y)
    //Get the handle of current axes
    g = gca()
    //Give labels and set label properties
    g.labels_font_color=5
    g.font_size=3
    g.grid=[1,1]
    g.box="off"
    title('S-N Curve (Example 5.11)')
    xlabel('log10N')
    ylabel('log10Sf')
endfunction