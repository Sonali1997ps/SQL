 drop procedure sample_sp_with_params;
Set @b="Updated";
call sample_sp_with_params(1, @a,@b);
select @a,@b;

DELIMITER |
CREATE PROCEDURE sample_sp_with_params (IN empId INT UNSIGNED, OUT oldName VARCHAR(20), INOUT newName VARCHAR(20))
BEGIN
SELECT first_name into oldName FROM emp1 where id = empId;
UPDATE emp1 SET first_name = newName where id = empId;
select * from emp1;

END
|





call getTotal("Hyundai",@total);
select @total;

delimiter $
create procedure getTotal(in mkrName varchar(20), out total int)
begin
 select count(*) into total from cars_india_dataset where maker= mkrName;
end
 $



delimiter &
-- in is used to pass the parameter to query
create procedure myProcedure(in mkr varchar(20) )
begin

select * from cars_india_dataset where maker=mkr;

end &

call myProcedure('Hyundai');

-- out is used To display the data
create procedure outProcedure(out param1 int )
begin

select count(*) into param1 from cars_india_dataset;

end &

call outProcedure(@a);
-- @a will have the result which is in param1
select @a;









