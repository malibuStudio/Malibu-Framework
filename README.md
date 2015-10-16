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

#### Triggering a Modal

To trigger a modal simply add `data-action="modal"` and `data-target="modal target here"` to the element to trigger the modal.

```
button.btn.btn-primary.btn-xl(data-action="modal" data-target=".modal")
  | Open Modal
```

#### Closing a Modal

To close a modal, simply add `.close` to the element that would trigger the modal. The triggering element has to be inside modal itself.

```
.modal
  .modal-footer
    button.btn.btn-black.close
      | Close
```

#### Adding Modal Overlay

To add an overlay when modal is opened, add `data-overlay="true"` to the triggering element.

```
button.btn(data-action="modal" data-target=".modal" data-overlay="true")
  | Open with Overlay
```

#### Shorthand Modal Trigger

If you do not want to use the markup way of triggering a modal for whatever reason or situation, you can trigger a modal like so.

```
# Open modal
MODAL.init('.modal',
  overlay: true
)

# Close an already open modal
MODAL.close('.modal')
```