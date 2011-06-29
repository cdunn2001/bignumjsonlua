print(type(json))
print(#json)
exit()

function pvalue(val, indent)
  local t = type(val)
  if indent == nil then indent = "" end
  if t == 'string' then
      io.write(val)
  elseif t == 'table' then
    local xindent = indent .. "\t"
    if val[0] == nil then
      io.write("{\n")
      for k,v in pairs(val) do
          io.write(xindent..'"')
          pvalue(k, xindent)
          io.write('": ')
          pvalue(v, xindent)
          io.write(",\n")
      end
      io.write(indent.."}")
    else
      io.write("[")
      for i,v in ipairs(val) do
          pvalue(v, xindent)
          io.write(", ")
      end
      io.write("\n"..indent.."]")
    end
  end
end
pvalue(json)
print("\nDone")
