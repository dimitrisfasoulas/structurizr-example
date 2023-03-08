workspace {
    !docs docs
    model {
        system = softwareSystem "Service" {
            
            group backend {
                api = container "test" "test" "test"
            }

            group frontend {
                spa = container "test1" "test1" "test1"
            }

            api -> spa "->" "HTTP(s)" "Gated"
            spa -> api "<-" "HTTP(s)" "Gated"
    }

}