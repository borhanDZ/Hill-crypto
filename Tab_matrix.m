function Mat = Tab_matrix(cle,T)

  s = 0;
if(size(cle,1) == 2)
      
  for i = 1: size(T,2);
    if(mod(i,2)~=0)
       s = s+1;
       Mat(1,s) = T(1,i);
    else
       Mat(2,s) = T(1,i);
    end
  end
else
    
  for i = 1: size(T,2);
    if(mod(i,3) == 1)
       s = s+1;
       Mat(1,s) = T(1,i);
    else
     if(mod(i,3) == 2)
       Mat(2,s) = T(1,i);
     else
       Mat(3,s) = T(1,i);
     end
    end
  end
end

