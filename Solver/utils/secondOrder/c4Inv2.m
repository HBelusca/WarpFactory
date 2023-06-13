function [invCellArray] = c4Inv2(cellArray)
%CINV Finds the inverse of a 4x4 cell array
%    A = [ a, b, c, d; e, f, g, h; i, j, k, l; m, n, o, p];
%    invA = 1/det(A)*[ f*k*p - f*l*o - g*j*p + g*l*n + h*j*o - h*k*n, b*l*o - b*k*p + c*j*p - c*l*n - d*j*o + d*k*n, b*g*p - b*h*o - c*f*p + c*h*n + d*f*o - d*g*n, b*h*k - b*g*l + c*f*l - c*h*j - d*f*k + d*g*j; e*l*o - e*k*p + g*i*p - g*l*m - h*i*o + h*k*m, a*k*p - a*l*o - c*i*p + c*l*m + d*i*o - d*k*m, a*h*o - a*g*p + c*e*p - c*h*m - d*e*o + d*g*m, a*g*l - a*h*k - c*e*l + c*h*i + d*e*k - d*g*i; e*j*p - e*l*n - f*i*p + f*l*m + h*i*n - h*j*m, a*l*n - a*j*p + b*i*p - b*l*m - d*i*n + d*j*m, a*f*p - a*h*n - b*e*p + b*h*m + d*e*n - d*f*m, a*h*j - a*f*l + b*e*l - b*h*i - d*e*j + d*f*i; e*k*n - e*j*o + f*i*o - f*k*m - g*i*n + g*j*m, a*j*o - a*k*n - b*i*o + b*k*m + c*i*n - c*j*m, a*g*n - a*f*o + b*e*o - b*g*m - c*e*n + c*f*m, a*f*k - a*g*j - b*e*k + b*g*i + c*e*j - c*f*i];

[h,w] = size(cellArray);
assert(h==4 && w==4, 'Cell array is not 4x4')

r = cellArray;
det = cDet2(r);
invCellArray = { 1./det.*(r{2,2}.*r{3,3}.*r{4,4} - r{2,2}.*r{3,4}.*r{4,3} - r{2,3}.*r{3,2}.*r{4,4} + r{2,3}.*r{3,4}.*r{4,2} + r{2,4}.*r{3,2}.*r{4,3} - r{2,4}.*r{3,3}.*r{4,2}), 1./det.*(r{1,2}.*r{3,4}.*r{4,3} - r{1,2}.*r{3,3}.*r{4,4} + r{1,3}.*r{3,2}.*r{4,4} - r{1,3}.*r{3,4}.*r{4,2} - r{1,4}.*r{3,2}.*r{4,3} + r{1,4}.*r{3,3}.*r{4,2}), 1./det.*(r{1,2}.*r{2,3}.*r{4,4} - r{1,2}.*r{2,4}.*r{4,3} - r{1,3}.*r{2,2}.*r{4,4} + r{1,3}.*r{2,4}.*r{4,2} + r{1,4}.*r{2,2}.*r{4,3} - r{1,4}.*r{2,3}.*r{4,2}), 1./det.*(r{1,2}.*r{2,4}.*r{3,3} - r{1,2}.*r{2,3}.*r{3,4} + r{1,3}.*r{2,2}.*r{3,4} - r{1,3}.*r{2,4}.*r{3,2} - r{1,4}.*r{2,2}.*r{3,3} + r{1,4}.*r{2,3}.*r{3,2}); 1./det.*(r{2,1}.*r{3,4}.*r{4,3} - r{2,1}.*r{3,3}.*r{4,4} + r{2,3}.*r{3,1}.*r{4,4} - r{2,3}.*r{3,4}.*r{4,1} - r{2,4}.*r{3,1}.*r{4,3} + r{2,4}.*r{3,3}.*r{4,1}), 1./det.*(r{1,1}.*r{3,3}.*r{4,4} - r{1,1}.*r{3,4}.*r{4,3} - r{1,3}.*r{3,1}.*r{4,4} + r{1,3}.*r{3,4}.*r{4,1} + r{1,4}.*r{3,1}.*r{4,3} - r{1,4}.*r{3,3}.*r{4,1}), 1./det.*(r{1,1}.*r{2,4}.*r{4,3} - r{1,1}.*r{2,3}.*r{4,4} + r{1,3}.*r{2,1}.*r{4,4} - r{1,3}.*r{2,4}.*r{4,1} - r{1,4}.*r{2,1}.*r{4,3} + r{1,4}.*r{2,3}.*r{4,1}), 1./det.*(r{1,1}.*r{2,3}.*r{3,4} - r{1,1}.*r{2,4}.*r{3,3} - r{1,3}.*r{2,1}.*r{3,4} + r{1,3}.*r{2,4}.*r{3,1} + r{1,4}.*r{2,1}.*r{3,3} - r{1,4}.*r{2,3}.*r{3,1}); 1./det.*(r{2,1}.*r{3,2}.*r{4,4} - r{2,1}.*r{3,4}.*r{4,2} - r{2,2}.*r{3,1}.*r{4,4} + r{2,2}.*r{3,4}.*r{4,1} + r{2,4}.*r{3,1}.*r{4,2} - r{2,4}.*r{3,2}.*r{4,1}), 1./det.*(r{1,1}.*r{3,4}.*r{4,2} - r{1,1}.*r{3,2}.*r{4,4} + r{1,2}.*r{3,1}.*r{4,4} - r{1,2}.*r{3,4}.*r{4,1} - r{1,4}.*r{3,1}.*r{4,2} + r{1,4}.*r{3,2}.*r{4,1}), 1./det.*(r{1,1}.*r{2,2}.*r{4,4} - r{1,1}.*r{2,4}.*r{4,2} - r{1,2}.*r{2,1}.*r{4,4} + r{1,2}.*r{2,4}.*r{4,1} + r{1,4}.*r{2,1}.*r{4,2} - r{1,4}.*r{2,2}.*r{4,1}), 1./det.*(r{1,1}.*r{2,4}.*r{3,2} - r{1,1}.*r{2,2}.*r{3,4} + r{1,2}.*r{2,1}.*r{3,4} - r{1,2}.*r{2,4}.*r{3,1} - r{1,4}.*r{2,1}.*r{3,2} + r{1,4}.*r{2,2}.*r{3,1}); 1./det.*(r{2,1}.*r{3,3}.*r{4,2} - r{2,1}.*r{3,2}.*r{4,3} + r{2,2}.*r{3,1}.*r{4,3} - r{2,2}.*r{3,3}.*r{4,1} - r{2,3}.*r{3,1}.*r{4,2} + r{2,3}.*r{3,2}.*r{4,1}), 1./det.*(r{1,1}.*r{3,2}.*r{4,3} - r{1,1}.*r{3,3}.*r{4,2} - r{1,2}.*r{3,1}.*r{4,3} + r{1,2}.*r{3,3}.*r{4,1} + r{1,3}.*r{3,1}.*r{4,2} - r{1,3}.*r{3,2}.*r{4,1}), 1./det.*(r{1,1}.*r{2,3}.*r{4,2} - r{1,1}.*r{2,2}.*r{4,3} + r{1,2}.*r{2,1}.*r{4,3} - r{1,2}.*r{2,3}.*r{4,1} - r{1,3}.*r{2,1}.*r{4,2} + r{1,3}.*r{2,2}.*r{4,1}), 1./det.*(r{1,1}.*r{2,2}.*r{3,3} - r{1,1}.*r{2,3}.*r{3,2} - r{1,2}.*r{2,1}.*r{3,3} + r{1,2}.*r{2,3}.*r{3,1} + r{1,3}.*r{2,1}.*r{3,2} - r{1,3}.*r{2,2}.*r{3,1})};
end
