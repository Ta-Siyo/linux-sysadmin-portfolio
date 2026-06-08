### Skills demonstrated
-useradd
-groupadd
-usermod
-chown
-chmod
-sudo

## Task Completed
-Created developers and admins groups
-Created user accounts
-Assigned users to groups
-Created department directories
-Configured ownership
-Applied permissions
-Tested access restrictions
-Configured sudo access

## Screenshots
See the screenshots folder for evidence of each step, and their explanations
are detailed down below






### Created Groups
-Verified that the groups did not exist in /etc/group, created them using
 groupadd, and confirmed successful creation using getent group.

### Folder Ownership

Created department directories and assigned group ownership using 'chown'.

Before:
- Owner: root
- Group: root

After:
- /company/developers -> root:developers
- /company/admins -> root:admins 

This allows permissions to be managed through group membership rather than 
individual users.

### Users
Added users to department groups using usermod -aG. Verified membership using
the groups command. GRoup membership allows permissions to be assigned to 
multiple users through a single group rather than individually.

### Shared Company Directories
Created a company directory structure using 'mkdir'.

Before:
- '/company' did not exist

Commands:
```bash
sudo mkdir /company
sudo mkdir /company/developers
sudo mkdir /company/admins```

### Folder Ownership Assignment

Assigned department folders to appropriate groups using `chown`.

Before:
-Both folders belonged to group `root`

Commands:
```bash
sudo chown root:developers /company/developers
sudo chown root:admins /company/admins```


### Access Testing
Testing group-based control using user simahle.

Steps:
- Logged in as simahle using `su - simahle`
- Successfully created a file in `/company/developers`
- Attempted (and failed) to create a file in `/company/admins`

Result:
- simahle can access the developers directory
- simahle is denied access to the admins directory

THis confirms that Linux file permissions and group ownership are correctly 
enforcing access control.


# Directory Permissions
Configured department directories using `chmod 770`.

Before:
- DIrectories allowed access to other users (`rwxr-xr-x`).

Commands:
```bash
sudo chmod 770 /company/developers
sudo chmod 770 /company/admins```


### Sudo Configuration
Granted administrative privileges by adding the user to the `sudo` group.

Before:
-User was not a member of the sudo group.

Command.
```bash
sudo usermod -aG sudo charlie```


### chmod Demonstration
Created a test file and modified its permissions using `chmod`.

Commands:
```bash
touch permissions-demo.txt
chmod 777 permissions-demo.txt
chmod 644 permissions-demo.txt```
