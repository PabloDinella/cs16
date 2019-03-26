// thanks https://stackoverflow.com/a/20643568/2350685
const { exec } = require('child_process');
exec('./playcs16.sh', (err, stdout, stderr) => {
  if (err) {
    // node couldn't execute the command
    return;
  }

  // the *entire* stdout and stderr (buffered)
  console.log(`stdout: ${stdout}`);
  console.log(`stderr: ${stderr}`);
});
