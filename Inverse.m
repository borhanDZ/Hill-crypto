function I = Inverse(m)

if (size(m,1) == size(m,2))
    if(determinant(m) ~= 0)
   
     C = Comat(m);
     T = possitif(transposet(C));
     D = modulo(determinant(m));
     I = T*D;
    else
     disp('le determinant est == 0');
    end
else
     disp('pas matrice carée ');
end
end

