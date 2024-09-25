import sys
import angr
import monkeyhex


proj = angr.Project('./demox64.exe')

fac = proj.factory


block = fac.block(proj.entry)

cap = block.capstone




print(proj.entry)

print("123123123")