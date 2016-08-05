def __main__(argv)
  argv.shift
  case argv[0]
  when "version"
    puts "haconiwa: v#{Haconiwa::VERSION}"
  when "revisions"
    Haconiwa::Cli.revisions
  when "create"
    Haconiwa::Cli.create(argv)
  when "provision"
    Haconiwa::Cli.provision(argv)
  when "start", "run"
    Haconiwa::Cli.run(argv)
  when "attach"
    Haconiwa::Cli.attach(argv)
  when "kill"
    Haconiwa::Cli.kill(argv)
  else
    puts <<-USAGE
haconiwa - The MRuby on Container
commands:
    create    - create the container rootfs
    provision - provision already booted container rootfs
    start     - run the container
    attach    - attach to existing container
    kill      - kill the running container
    version   - show version
    revisions - show mgem/mruby revisions which haconiwa bin uses

Invoke `haconiwa COMMAND -h' for details.
    USAGE
  end
end
