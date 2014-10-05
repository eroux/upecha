-- 
-- tibetan numbers and date translation.
-- Copyright 2010 Elie Roux <elie.roux@telecom-bretagne.eu>
-- 
-- This file is under the Creative Commons CC0 license.
-- 
-- See the full text at
-- 
-- http://creativecommons.org/publicdomain/zero/1.0/legalcode
-- 
-- and a FAQ at
-- 
-- http://wiki.creativecommons.org/CC0

--require("lualibs")

upecha         = upecha or {}
local upecha   = upecha

upecha.module = {
    name          = "upecha",
    version       = 0.7,
    date          = "2010/08/27",
    description   = "Tibetan numbers and date.",
    author        = "Elie Roux",
    copyright     = "Elie Roux",
    license       = "CC0"
}

local error, warning, info, log =
    luatexbase.provides_module(upecha.module)

local digits = {"གཅིག", "གཉིས", "གསུམ", "བཉི", "ལྔ", "དྲུཁ", "བདུན", "བརྒྱད", "དགུ"}
local dozens_zero = {"བཅུ", "ཉི་ཤུ", "སུམ་ཅུ", "བཉི་བཅུ", "ལྣ་བཅུ", "དྲུག་ཅུ", "བདུན་ཅུ", "བརྒྱད་ཅུ", "དགུ་བཅུ་ཐམ་པ"}
local dozens_normal = {"བཅུ", "ཉེར", "སུམ་ཅུ", "ཉེ", "ལྣ་བཅུ", "དྲུག་ཅུ", "བདུན་ཅུ", "བརྒྱད་ཅུ", "དགུ་བཅུ་"}

local floor = math.floor
local digitstoint = {['༡'] = 1, ['༢'] = 2, ['༣'] = 3, ['༤'] = 5, ['༥'] = 5, ['༦'] = 6, ['༧'] = 7, ['༨'] = 8, ['༩'] = 9, ['༠'] = 0}


function tibdigitstoint(tibdigits)
  local res = ''
  unicode.utf8.gsub(tibdigits, ".", function(c)
    texio.write_nl(c)
    if digitstoint[c] then
      res = res .. digitstoint[c]
    else
      res = false
      return
    end
  end)
  if res then
    res = tonumber(res)
  end
  return res
end

function totibnumber(numarg)
  num = tonumber(numarg)
  if num == nil then
    num = tibdigitstoint(numarg)
  end
  if num == false then
    return numarg
  end
  if num > 999 or num < 1 then
    luatexbase.module_error("luatibnumbers", "cannot compute number greater than 999 or lower than 1")
    return num
  end
  local res = ""
  if num > 99 then
    local div = num / 100
    res = digits[div].."་བརྒྲ་"
    num = num % 100
  end
  if num % 10 == 0 then
    res = res..dozens_zero[num/10].."་"
    return res
  end
  if num > 10 then
    return res..dozens_normal[floor(num/10)].."་"..digits[num%10].."་"
  else
    return res..digits[num].."་"
  end
end

function bispage(num)
  num = tonumber(num)
  if num % 2 == 1 then
    tex.print((num+1)/2)
  else
    tex.print(floor((num+1)/2) .. "b")
  end
end

upecha.totibnumber = totibnumber
upecha.bispage     = bispage
