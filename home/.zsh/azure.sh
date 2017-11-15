if [ -f $HOME/lib/azure-cli/az.completion ]; then
    # See: https://github.com/Azure/azure-cli/issues/1722
    autoload bashcompinit && bashcompinit
    source $HOME/lib/azure-cli/az.completion
fi
