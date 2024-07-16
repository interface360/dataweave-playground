%dw 2.0
output application/json
---
{
    "Result": (
        (     ((payload.Input ++ payload.Output) groupBy ($.uri ++ $.name)) mapObject ((value, key, index) ->
        (if(sizeOf(value)>1)
            ({}) else
        (
            {(result:value[0])}
        ))
     ))).*result
}
