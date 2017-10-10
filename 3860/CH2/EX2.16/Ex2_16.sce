//Example 2.16: Reduce expression using Boolean laws
clc // Clears the console
disp('wx + wxy + w''yz + w''y''z + w''xyz''')
disp(' = (wx + wxy) + (w''yz + w''y''z'') + w''xyz''')
disp(' = wx + w''z + w''xyz''')
disp(' = wx + w''(z + xyz'')')
disp(' = wx + w''(z + xy)')
disp(' = wx + w''z + w''xy)')
disp(' =w''z +  x( w + w''y)')
disp(' =w''z +  x( w + y)')
disp(' =w''z +  wx + xy')
//the reduced expression is displayed.
