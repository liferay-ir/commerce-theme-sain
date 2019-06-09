<#if has_navigation && is_setup_complete>
    <nav class="desktop-menu">
    <ul>
        <#list nav_items as nav_item>
        <#assign
        nav_child_is_selected = false
        nav_item_attr_has_popup = ""
        nav_item_attr_selected = ""
        nav_item_attr_data_toggle = ""
        nav_item_css_class = "nav-item"
        nav_item_layout = nav_item.getLayout()
        nav_link_css_class = ""

        dropdown_menu_css_class = ""
        />

        <#if nav_item.hasChildren()>
            <#assign
            nav_item_css_class= "${nav_item_css_class} dropdown"
            nav_link_css_class = "${nav_link_css_class} dropdown-toggle"
            />

            <#list nav_item.getChildren() as nav_child>
                <#if nav_child.isSelected()>
                    <#assign
                    nav_child_is_selected = true
                    />
                </#if>
            </#list>
        </#if>

        <#if nav_item.isSelected() && !nav_child_is_selected>
            <#assign
            nav_item_css_class = ""
            nav_link_css_class = " active"
            />
        </#if>

        <#if !nav_item?has_next>
            <#assign
            dropdown_menu_css_class = " dropdown-menu-right"
            />
        </#if>
        <li class="nav_child_link_css_class">
            <a href="${nav_item.getURL()}" ${nav_item.getTarget()}>
                ${nav_item.getName()}
            </a>
            <#if nav_item.hasChildren()>
                <ul class="dropdown">
                    <#list nav_item.getChildren() as nav_child>
                        <#assign
                        nav_child_attr_selected = "selected"
                        nav_child_css_class = "nav-item"
                        nav_child_layout = nav_child.getLayout()
                        nav_child_link_css_class = ""
                        />

                        <#if nav_child.isSelected()>
                            <#assign
                            nav_child_link_css_class = " active"
                            />
                        </#if>
                            <li class="nav_child_link_css_class">
                                <a href="${nav_child.getURL()}" ${nav_child.getTarget()}>
                                    ${nav_child.getName()}
                                </a>
                            </li>
                    </#list>
                </ul>
            </#if>
        </li>
    </#list>
    </ul>
</nav>
</#if>