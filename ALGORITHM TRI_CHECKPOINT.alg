ALGORITHM TRI_CHECKPOINT
VAR
    t : ARRAY_OF INTEGER[];
    n,j,i :INTEGER;
BEGIN
    write(" n = ");
    read (n);
    
    FOR i FROM 1 TO n-1 STEP 1  DO
        j := 0;
        REPEAT
            IF (t[j]<t[i]) THEN
                t[j+1]:=t[j];
                t[j]:=t[i];
                j:=j+1;
            END_IF
        UNTIL (j=i-1)
    END_FOR
END