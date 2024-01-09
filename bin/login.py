import pyautogui
import time

# Define the duration between each action (in seconds)
duration = 2

# Read the secrets from the file
secrets = {}
with open("secrets.txt") as file:
    for line in file:
        key, value = line.strip().split("=")
        secrets[key] = value

# Define the coordinates and environment variable keys to get values for email and password
actions = [
    ((453, 172), None),  # tab change
    ((455, 302), secrets["EMAIL_SECRET"]), # email (type email secret from env after clicking)
    ((518, 346), None),  # log in
    ((655, 510), None),  # install
]


# Wait for a few seconds to give time to focus on the target application
time.sleep(5)

# Iterate through the actions and perform each one
for pos, text in actions:
    pyautogui.click(pos)
    if text is not None:
        pyautogui.typewrite(text)
    time.sleep(duration)  # Wait for the specified duration before proceeding to the next action