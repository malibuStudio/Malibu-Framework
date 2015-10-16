# MALIBU
Made with love :heart: by Malibu Studio

## Prerequesites
- Jade Templating Engine
- LESS (with autoprefixer)
- Coffeescript
- GSAP

The packages in the above list is already includes in the `packages` file.


## UI Components
- Buttons
- Modal

### Buttons

### Modal

#### Basic Modal Structure

```
.modal
  .modal-header
    .close
      i.close.icon
    h1 I am a Modal
  .modal-body
    h4 It's just great
    P Malibu Modal
  .modal-footer
    .pull-right
      button.close.btn-black Close
```

To trigger a modal simply add `data-action="modal" and `data-target="modal target here"` to the element to trigger the modal.

```
button.btn.btn-primary.btn-xl(data-action="modal" data-target=".modal")
  | Open Modal
```

