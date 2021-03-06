class ApplicationHelper::Toolbar::DialogsCenter < ApplicationHelper::Toolbar::Basic
  button_group('dialog_vmdb', [
    select(
      :dialog_vmdb_choice,
      'fa fa-cog fa-lg',
      t = N_('Configuration'),
      t,
      :items => [
        button(
          :dialog_new,
          'pficon pficon-add-circle-o fa-lg',
          t = N_('Add a new Dialog'),
          t,
          :klass => ApplicationHelper::Button::DialogNew),
        button(
          :dialog_new_editor,
          'pficon pficon-add-circle-o fa-lg',
          t = N_('Add a new Dialog with the Dialog Editor'),
          t,
          :klass => ApplicationHelper::Button::DialogNew),
        button(
          :dialog_edit,
          'pficon pficon-edit fa-lg',
          t = N_('Edit the selected Dialog'),
          t,
          :url_parms    => "main_div",
          :send_checked => true,
          :enabled      => false,
          :onwhen       => "1",
          :klass        => ApplicationHelper::Button::DialogAction),
        button(
          :dialog_edit_editor,
          'pficon pficon-edit fa-lg',
          t = N_('Edit the selected Dialog in the Dialog Editor'),
          t,
          :url_parms    => "main_div",
          :send_checked => true,
          :enabled      => false,
          :onwhen       => "1",
          :klass        => ApplicationHelper::Button::DialogAction),
        button(
          :dialog_copy,
          'fa fa-files-o fa-lg',
          t = N_('Copy the selected Dialog to a new Dialog'),
          t,
          :url_parms    => "main_div",
          :send_checked => true,
          :enabled      => false,
          :onwhen       => "1",
          :klass        => ApplicationHelper::Button::DialogAction),
        button(
          :dialog_delete,
          'pficon pficon-delete fa-lg',
          t = N_('Remove selected Dialogs'),
          t,
          :url_parms    => "main_div",
          :send_checked => true,
          :confirm      => N_("Warning: The selected Dialog will be permanently removed from the Virtual Management Database!"),
          :enabled      => false,
          :onwhen       => "1+",
          :klass        => ApplicationHelper::Button::DialogAction),
      ]
    ),
  ])
end
