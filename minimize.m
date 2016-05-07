% Problem 1

f = @(x,y) (x.^2+y-11)^2 + (x+y.^2-7)^2;
ezsurfc(f, [-5,5])

fun = @(x) (x(1).^2+x(2)-11)^2 + (x(1)+x(2).^2-7)^2;

x0 = [4 2];
options = optimset('largeScale', 'off', 'Display', 'iter');
%options = optimset(options,);
%[x, fval, exitflag, output] = fminunc(fun, x0, options)
[x1, fval1, exitflag1, output1, grad1, hessian1] = fminunc(fun, x0, options);

x0 = [4 -2];
[x2, fval2, exitflag2, output2, grad2, hessian2] = fminunc(fun, x0, options);

x0 = [-4 -3];
[x3, fval3, exitflag3, output3, grad3, hessian3] = fminunc(fun, x0, options);

x0 = [-3 3];
[x4, fval4, exitflag4, output4, grad4, hessian4] = fminunc(fun, x0, options);

x1
x2 
x3 
x4

% function value at minimizers

[fval1 fval2 fval3 fval4]

[eig(hessian1) eig(hessian2) eig(hessian3) eig(hessian4)]


