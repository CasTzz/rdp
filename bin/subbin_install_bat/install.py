import pyautogui as pag
import time

# Mouse coordinates for each action
mouse_coordinates = [
    (308, 336, 1),   #allow all
    (616, 537, 1),   #install
    (448, 348, 5),   #untic
    (611, 536, 1),    #finish
]

# Wait for initial setup
time.sleep(2)

# Perform the actions in the specified order
for x, y, duration in mouse_coordinates:
    pag.click(x, y, duration=duration)
