module SpecificInstall::Git
  def git(*commands)
    system "git", *commands
    raise "'$ git #{commands.join(' ')}' exited with an error" if $?.exitstatus != 0
  end

  def git_required!
    abort "Error: cannot find git." if not git_installed?
  end

  def git_installed?
    case RbConfig::CONFIG['host_os'].downcase
    when /^mingw|mswin/ then system("where.exe git")
    else system("which git")
    end
  end
end
