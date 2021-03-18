function T = matrix_Tab(Mat)
  s = 0;
if(size(Mat,1) == 2)
     k = size(Mat,2)*2;
  for i = 1: k
    if(mod(i,2)~=0)
       s = s+1;
       T(1,i) = Mat(1,s);
    else
       T(1,i) = Mat(2,s);
    end
  end
else
     k = size(Mat,2)*3;
  for i = 1: k
    if(mod(i,3) == 1)
       s = s+1;
       T(1,i) = Mat(1,s);
    else
     if(mod(i,3) == 2)
       T(1,i) = Mat(2,s);
     else
       T(1,i) = Mat(3,s);
     end
    end
  end

end

