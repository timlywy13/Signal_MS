/// Approach(a, b,amount)
///@description Approach (a,b,amount)
///@param a
///@param b
///@param amount

if (argument0 < argument1)
{
    argument0 += argument2 ;
    if (argument0 > argument1)
            return argument1 ;
}
else
{
    argument0 -= argument2 ;
    if (argument0 < argument1)
            return argument1 ;
}
return argument0 ;