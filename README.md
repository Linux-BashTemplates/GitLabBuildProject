  <h1>MusicBox Project Automation Script</h1>
  <p>This script automates the process of building microservices projects on your local machine. It includes checking and installing required software programs, configuring SSH access keys for GitLab, creating necessary project directories, and pulling code repositories from GitLab.</p>
  
  <h2>Prerequisites</h2>
  <p>This script requires the following programs to be installed:</p>
  <ul>
    <li>git</li>
    <li>ssh</li>
    <li>openvpn</li>
  </ul>
  <p>If any of these programs are not installed, the script will attempt to install them.</p>
  
  <h2>Configuration</h2>
  <p>Edit the script to configure the following parameters:</p>
  <ul>
    <li><code>programs</code>: List of required programs for installation.</li>
    <li><code>project_dir</code>: Location of the project directory.</li>
    <li><code>repo_base_url</code>: Base URL for GitLab repositories.</li>
    <li><code>directory_repository_map</code>: Mapping of project directories to repository URLs.</li>
  </ul>
  
  <h2>Usage</h2>
  <p>To use the script:</p>
  <ol>
    <li>Open a terminal.</li>
    <li>Navigate to the directory containing the script.</li>
    <li>Run the following command to make the script executable: <code>chmod +x git.sh</code></li>
    <li>Run the script: <code>./git.sh</code></li>
    <li>Follow the on-screen prompts to configure SSH access and install required software.</li>
  </ol>
  
  <h2>Functionality</h2>
  <ul>
    <li><strong>CheckSoftwareInstallation:</strong> Checks for required software installations and installs them if necessary.</li>
    <li><strong>SetAccessConfig:</strong> Configures SSH access for GitLab repositories.</li>
    <li><strong>InstallProgram:</strong> Installs required software programs.</li>
    <li><strong>CreateFolder:</strong> Creates project directories if they don't exist.</li>
    <li><strong>GitPullChanges:</strong> Initializes Git repositories and pulls changes from GitLab.</li>
    <li><strong>Start:</strong> Main function that orchestrates the script's execution.</li>
  </ul>
  <h2>How to Configure SSH and Transmit with GitLab over SSH and Private Key</h2>
  <p><b>Step 1: Install SSH Service</b></p>
  <pre><code>sudo apt install ssh</code></pre>
  
  <p><b>Step 2: Enable and Start SSH Service on Boot</b></p>
  <pre><code>sudo systemctl enable sshd && sudo systemctl start sshd</code></pre>
  
  <p><b>Step 3: Generate a New Access Key</b></p>
  <pre><code>
ssh-keygen -t rsa -b 4096 -C "example@example.com" # Generate a new key.
 P.S Add public key which called like as id_rsa.pub to GitLab afterward.
eval "$(ssh-agent -s)" # Run ssh-agent
ssh-add ~/.ssh/id_rsa
</code></pre>
  
 <p><b>Step 4: Use ssh-agent in Persistent Mode to Avoid Repeated Key Passphrase Prompts</b></p>
 <p>So open the configuration script ~/.bashrc using the nano text editor and add the following line:</p>
  <pre><code>
if [ -z "$SSH_AUTH_SOCK" ]; then
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/id_rsa
fi 
</code></pre>
<p>Save the changes by pressing CTRL+O and then enter the following command to apply the changes without restarting the sessio9n:</p>
<code>
    source ~/.bashrc    
</code>  
  <p><b>Step 5: Edit SSH Configuration</b></p>
  <p>Edit the ssh_config file located at /etc/ssh/ssh_config using a text editor like nano:</p>
  <pre><code>
sudo nano /etc/ssh/ssh_config
</code></pre>
  <p>Add the following lines:</p>
  <pre><code>
Host gitlab.musicbox.local
  PreferredAuthentications publickey
  IdentityFile ~/.ssh/id_rsa
</code></pre>
  
  <p><b>Step 6: Restart SSH Service</b></p>
  <pre><code>sudo systemctl restart sshd</code></pre>
  
  <p><b>Step 7: Test the Connection</b></p>
  <pre><code>ssh -T git@gitlab.musicbox.local</code></pre>
  <p>You should receive a welcome message from GitLab.</p>
  
  <p><b>Step 8: Run Your Script</b></p>
  <pre><code>./git.sh</code></pre>
  <p><em>Developed by Sergey Zhyltsov</em></p>
