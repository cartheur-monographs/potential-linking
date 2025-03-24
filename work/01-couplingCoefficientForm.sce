// 19 June 2015
// Potential linking (draft)

// Run through the theory solving the equations

// The coupling coefficient of the form

function dx=f(t,x)
    dx=2*0.014*cos(2*%pi*7/t)// Better to start with large values first.
endfunction

z = 1:1:10;// for values of t=>30, z is imcompatible above z=9.
t0 = 0.1
x0 = 5
t = 0.1:0.1:1000;
x = ode(x0, t0, t, f);
plot2d(t,x)