function onEvent(name, value1, value2)
     if name == 'gxmd' then
          startVideo(value1)
          return Function_Stop
     end
     return Function_Continue
end