import colorsys

# Used to generate a rainbow for the tower. 
# You'll need to modify it depending on what you're displaying onto. 
# It exists as hex in Bash is annoying and it saves regenerating multiple times

def hex_to_RGB(hex):
    ''' "#FFFFFF" -> [255,255,255] '''
    # Pass 16 to the integer function for change of base
    return [int(hex[i:i+2], 16) for i in range(1,6,2)]

with open('../outputs/rainbow.pf', 'w') as f:
  for i in range(0, 458):
    (r, g, b) = colorsys.hsv_to_rgb(i/458, 1.0, 1.0)
    R, G, B = int(255 * r), int(255 * g), int(255 * b)
    f.write(f'PX {i} 0 ' + '%02x%02x%02x' % (R, G, B) + '\n')