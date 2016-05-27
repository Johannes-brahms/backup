#!/usr/bin/env python
# -*- coding: utf-8 -*-
import sys
from subprocess import Popen, PIPE, STDOUT

blocks = {}
sequence = []
class block(object):

    def __init__(self, identity,foreground, background, command, label = '', right_padding = 2, left_padding = 2, inner_padding = 1):
        self.identity = identity
        self.foreground = foreground
        self.background = background
        

        right_padding = ' ' * right_padding
        left_padding = ' ' * left_padding
        inner_padding = ' ' * inner_padding
        pipe = Popen(command, stdout = PIPE, stdin = PIPE, stderr = STDOUT, shell = True)
        output = pipe.stdout.read().strip(' ')
        
        block = '<span foreground = "{}" background = "{}">{}{}{}{}{}</span>'.format(foreground, 
                                                                                    background,
                                                                                    left_padding,
                                                                                    label,
                                                                                    inner_padding,
                                                                                    output.strip('\n'),
                                                                                    right_padding)

        if len(blocks) == 0:
            previous = ''        
        else:
            #print 'it has previous', block_sequence[len(block_sequence)-1]
            previous = '<span foreground = "{}" background = "{}"></span>'.format(sequence[len(sequence) - 1].background, background)

        self.block = block + previous
        blocks[identity] = self
        sequence.append(self)
    def pango(self):
    
        return self.block 



time = block("time", "#FFFFFF", "#247BA0","date +'%H:%M'", label = " ",)
battery = block("battery", "#3399FF", "#CC6666", "$HOME/scripts/battery.sh", )
wifi = block("wifi", '#000000', '#70C1B3', "iwgetid -r", label = " ")
temperature = block('temperature', '#F0C674', '#1D1F21','$HOME/scripts/temperature.sh "Core 0"', label = '')


print blocks[sys.argv[1]].pango()


