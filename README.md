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
    <li>Run the following command to make the script executable: <code>chmod +x script.sh</code></li>
    <li>Run the script: <code>./script.sh</code></li>
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
  
  <p><em>Developed by Sergey Zhyltsov</em></p>
