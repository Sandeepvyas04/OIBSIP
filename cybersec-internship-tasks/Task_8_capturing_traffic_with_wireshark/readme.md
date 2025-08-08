# Network Traffic Capture and Analysis with Wireshark on Linux

## Objective
Capture and analyze network traffic on a local Linux machine using Wireshark, focusing on HTTP traffic to understand web communication details.

## Tools Used
- Wireshark (https://www.wireshark.org/)

## Installation
To install Wireshark on a Debian/Ubuntu-based Linux system, run:

```bash
sudo apt update
sudo apt install wireshark
During installation, allow non-root users to capture packets by selecting Yes when prompted.

Add your user to the wireshark group to enable packet capturing without sudo:

bash
Copy code
sudo usermod -aG wireshark $USER
Log out and log back in to apply group changes.

Capturing Traffic
Launch Wireshark by running wireshark from the terminal or through your applications menu.

Select the active network interface (e.g., eth0, wlan0).

Click the Start Capture button (blue shark fin icon) to begin capturing packets.

To filter HTTP traffic, enter http in the display filter bar and press Enter.

Analyze HTTP packets by inspecting request and response headers, URLs, methods (GET, POST), and status codes.

Saving Capture
After capturing sufficient data, stop the capture by clicking the red Stop button.

Save the capture file as wireshark_capture.pcap via File > Save As.

Analysis Summary
The capture includes HTTP requests and responses within the local network.

Observed HTTP methods include GET and POST.

Examined headers such as Host, User-Agent, and Cookie.

Noted response status codes like 200 OK and 404 Not Found.

HTTPS traffic is encrypted and not captured as readable HTTP packets.

Potentially sensitive data transmitted in clear text, such as cookies or parameters, can be identified.

How to Open the Capture File
Open Wireshark.

Go to File > Open.

Select wireshark_capture.pcap.

Use the filter http to view HTTP traffic.

Legal and Ethical Considerations
Only capture traffic on networks you own or have explicit permission to monitor.

Avoid intercepting private or unauthorized communications.
