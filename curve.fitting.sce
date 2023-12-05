//Linear Fit
//To fit a given set of data-points to a line.
//Written By: Manas Sharma(www.bragitoff.com)
funcprot(0);
function [f,m,c]=linefit(x,y)
    n=size(x);
    if n(2)<n(1) then
        n=n(2)
    else
        n=n(1);
    end
    xsum=0;
    ysum=0;
    xysum=0;
    x2sum=0;
    for i=1:n
        xsum=x(i)+xsum;
        ysum=y(i)+ysum;
        x2sum=x(i)*x(i)+x2sum;
        xysum=x(i)*y(i)+xysum;
    end
    m=(n*xysum-xsum*ysum)/(n*x2sum-xsum*xsum);
    c=(x2sum*ysum-xsum*xysum)/(x2sum*n-xsum*xsum);
    for i=1:n
        f(i)=m*x(i)+c;
          end
endfunction
