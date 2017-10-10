//Function to standardize the dimensions

funcprot(0)
function stddim(x)
    x=x*(10^3)
    std=[1 2 3 4 5 6 8 10 12 15 18 20 24 26 30:5:400]
    n=length(std)
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