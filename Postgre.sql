CREATE OR REPLACE FUNCTION ejercicio5(numero INTEGER)
RETURNS TEXT AS
$$
BEGIN
  IF numero % 2 = 0 THEN
    RETURN 'El número ' || numero || ' es par';
  ELSE
    RETURN 'El número ' || numero || ' es impar';
  END IF;
END;
$$
LANGUAGE plpgsql;

SELECT public.ejercicio5(5);

CREATE OR REPLACE PROCEDURE crearNumeros() AS $$
DECLARE
    i INTEGER;
BEGIN
    DROP TABLE IF EXISTS numeros;
    CREATE TABLE numeros (
        idnum SERIAL PRIMARY KEY,
        n1 INTEGER,
        n2 INTEGER,
        n3 INTEGER
    );

    FOR i IN 1..100 LOOP
        INSERT INTO numeros (n1, n2, n3)
        VALUES (
            FLOOR(RANDOM() * 10) + 1, 
            FLOOR(RANDOM() * 7) + 3, 
            FLOOR(RANDOM() * 11) + 10
        );
    END LOOP;
END;
$$ LANGUAGE PLPGSQL;

CALL public.crearnumeros();

SELECT 
	idnum, 
	n1, 
	public.ejercicio5(n1) as "Par/Impar N1", 
	n2, 
	public.ejercicio5(n2) as "Par/Impar N2", 
	n3, 
	public.ejercicio5(n3) as "Par/Impar N3" 
from numeros;
