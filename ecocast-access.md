# Access to ecocast server

The common vernacular for our work environment and server is `ecocast`.  

# VPN

If working from outside of Bigelow, you must establish a VPN connection using [Bigelow's OpenVPN server](https://vpn.bigelow.org/?src=connect).  Bigelow's IT department will provide accounts and temporary passwords for approved users (including styudents and interns).

# SSH

You may establish an SSH session with the ecocast server.  The username may be different and your password **should** be different than that used to establish your VPN session.  

# SSH Key Exchange

You may need to exchange SSH keys between your client computer ad the server to gain regular access. There are loads of [resources](https://duckduckgo.com/?q=ssh+key+exchange&t=ffsb&ia=web) on "how to". 

# RStudio Server

`ecocast` hosts [RStudio Server](https://www.rstudio.com/) which provides full RStudio functionality through a browser.  Our server is located at http://ecocast.bigelow.org:8787

# Remote file access

Remote file access is possible using remote sftp browsers such as [Cyberduck](https://cyberduck.io/), [Filezilla](https://filezilla-project.org/), [Fetch](https://fetchsoftworks.com/) or the like.  Use your SSH username and password.

URL: sftp://ecocast.bigelow.org/mnt/ecocast 
Port: 22

You may be able to [VS Code](https://code.visualstudio.com) which is a development environment.

If your local platform runs macos you may be able to set up [rmate](https://github.com/textmate/rmate) to diretcly edit files on the server using TextMate, Atom and other editors.  Contact Bigelow IT for help with that. 

### rmate troubles?

From Nicholas Covino ...
>It can only work for one session at a time, unless you change the port before every connection (which is obviously a pain). So if you get disconnected uncleanly it'll fail until that session times out or you manually kill it.
>
>The easiest way is`killall sshd` from the new session, though it will also drop that one; you can do `ps waux | grep sshd | grep <username>` to find the specific PID to kill manually (it'll be the sshd instance running as you and not root).
